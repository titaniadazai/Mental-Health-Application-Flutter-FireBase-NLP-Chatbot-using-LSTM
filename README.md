# Mental-Health-Application-Flutter-FireBase-NLP-Chatbot-using-LSTM

AMITY -A Mental health application is created with Flutter and Firebase.
The following are its features:
1)NLP Based Chatbot-The chatbot is to provide quick assistance to those who are in dire need and give therapeutic assistance.
2)Group Chat-People with similar problems can chat via groups ,help each other out.
3)Provide diet and exercise plans.


This is the overall Architecture of the application
![image](https://user-images.githubusercontent.com/67817706/233579967-86ba8cec-56c0-4788-a11c-51338bd4268d.png)

MODEL EXPLANATION:
There are not many datasets available for mental health therapy online due to privacy concerns.Hence we expanded a small dataset to train our model. The dataset is json file formatted with 72 tags.
Out of which 30 tags are trivial mental health question tags, 10 are greetings and introduction tags and the remaining 32 are mental health descriptive tags.
![image](https://user-images.githubusercontent.com/67817706/233580482-5ef2302e-e3a0-477c-b8df-6403726ff361.png)


We used LSTM for training.Training accuracy is 98.37

OUTCOME:
![image](https://user-images.githubusercontent.com/67817706/233581185-6c5f439a-1d86-493f-9b65-63f5ca1e8590.png)
![image](https://user-images.githubusercontent.com/67817706/233581243-addc9e04-368d-4a87-ada5-36b7f2841d90.png)
![image](https://user-images.githubusercontent.com/67817706/233581315-417de98b-bf87-4138-8c20-ca9c7ab15da9.png)


To run the code:
1)Clone the repository 
2)Install dependencies,Visual Studio
3)For visualising the application, you can install and configure Android Studio. Run the command 'flutter run'
4)The model is trained and already saved as nlp_model1. The app.py file creates hosts the model in the local server at port 5000.
5)Run app.py file in the command prompt 'python app.py' along with the flutter application simultaneously.
