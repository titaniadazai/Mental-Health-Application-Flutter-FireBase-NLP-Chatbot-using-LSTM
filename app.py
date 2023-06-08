import pandas as pd
import json
import tensorflow as tf
from flask_cors import CORS
from flask import Flask, request, jsonify
from keras.preprocessing.text import Tokenizer
from sklearn.preprocessing import LabelEncoder
from tensorflow.keras.preprocessing.sequence import pad_sequences
import numpy as np
import re
import random
import os
os.environ['CUDA_VISIBLE_DEVICES'] = '-1'
with open('C:\\Users\\Kavi priya\\Desktop\\mental_health_chatbot\\intents.json', 'r') as f:
    data = json.load(f)

df = pd.DataFrame(data['intents'])
dic = {"tag": [], "patterns": [], "responses": []}
for i in range(len(df)):
    ptrns = df[df.index == i]['patterns'].values[0]
    rspns = df[df.index == i]['responses'].values[0]
    tag = df[df.index == i]['tag'].values[0]
    for j in range(len(ptrns)):
        dic['tag'].append(tag)
        dic['patterns'].append(ptrns[j])
        dic['responses'].append(rspns)

df = pd.DataFrame.from_dict(dic)
tokenizer = Tokenizer(lower=True, split=' ')
tokenizer.fit_on_texts(df['patterns'])
ptrn2seq = tokenizer.texts_to_sequences(df['patterns'])
X = pad_sequences(ptrn2seq, padding='post')
lbl_enc = LabelEncoder()
y = lbl_enc.fit_transform(df['tag'])
model = tf.keras.models.load_model('nlp_model1')
app = Flask(__name__)
cors = CORS(app)
# Define a route for your NLP model's endpoint that accepts a POST request with a JSON payload


def nlp_model(pattern):
    text = []
    txt = re.sub('[^a-zA-Z\']', ' ', pattern)
    txt = txt.lower()
    txt = txt.split()
    txt = " ".join(txt)
    text.append(txt)

    x_test = tokenizer.texts_to_sequences(text)
    x_test = np.array(x_test).squeeze()
    x_test = pad_sequences([x_test], padding='post', maxlen=X.shape[1])
    y_pred = model.predict(x_test)
    y_pred = y_pred.argmax()
    tag = lbl_enc.inverse_transform([y_pred])[0]
    responses = df[df['tag'] == tag]['responses'].values[0]

   # print("you: {}".format(pattern))
    # print("model: {}".format(random.choice(responses)))

    return {'prediction': random.choice(responses)}


@app.route('/', methods=['POST', 'GET'])
def predict():
    print('hello')
    print(request.headers)
    print(request.get_data())
    if request.is_json:
        text = request.json.get('text', '')

        result = nlp_model(text)
        return jsonify(result)
    else:
        return jsonify({'error': 'Invalid reqt'})
    # Get the input text from the request's JSON payload

    # Run the input text through your NLP model

    # Return the model's predictions as a JSON response


if __name__ == '__main__':
    print("working")
    app.run()
