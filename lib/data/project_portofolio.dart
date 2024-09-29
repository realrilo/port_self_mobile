class ProjectPortofolio {
  String tipeProject;
  String name;
  String description;
  List<String> imageUrls;

  ProjectPortofolio({
    required this.tipeProject,
    required this.name,
    required this.description,
    required this.imageUrls,
  });
}

var projectPortofolioList = [
  ProjectPortofolio(
    tipeProject: 'Data Scientist',
    name: 'Customer Churn Prediction Using Deep Learning and Streamlit',
    description:
        'The project successfully applied deep learning for customer churn prediction, using an Artificial Neural Network (ANN) model with 81% accuracy. Prepared the dataset through cleaning, transformation, and normalization, and built and optimized the ANN model. Integrated the model into a user-friendly Streamlit web application, enabling businesses to make data-driven decisions for better customer retention and growth. This project underscores the importance of thorough data preparation, model building, and evaluation in creating effective predictive analytics solutions',
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082398/DS_Churn_qunidk.png',
      'https://s3.amazonaws.com/msoe/files/callouts/wide_xlrg_computer-science-landing-page.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpGOCIhegp_J54Rvd8XrYCmTS395whGe71g&s',
    ],
  ), //no1
  ProjectPortofolio(
    tipeProject: 'Data Analyst',
    name: 'Report on Student Retention Analysis at Rainbow Kids',
    description:
        'Produced a student retention report for Rainbow Kids that includes competent analysis, compelling data visualisation and the provision of valuable insights derived from thorough analysis. Gathered data and produced a report using analytical skills and a broad approach to contribute to the success of the retention analysis project at Rainbow Kids. Effectively communicated my findings to stakeholders through presentations.',
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082036/report_retention_krg770.png',
      'https://s3.amazonaws.com/msoe/files/callouts/wide_xlrg_computer-science-landing-page.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpGOCIhegp_J54Rvd8XrYCmTS395whGe71g&s',
    ],
  ), //no2
  ProjectPortofolio(
    tipeProject: 'Data Analyst',
    name:
        'Exploring Urban Mobility: A Comprehensive Analysis of Bike Sharing Data',
    description:
        "Completed final project dashboard for the Dicoding data analysis course, where I conducted Python-based data analysis, deployed a web application using Streamlit, and presented insights derived from the analysis.",
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082036/dash_DA_rctv6k.png',
      'https://s3.amazonaws.com/msoe/files/callouts/wide_xlrg_computer-science-landing-page.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpGOCIhegp_J54Rvd8XrYCmTS395whGe71g&s',
    ],
  ),
  ProjectPortofolio(
    tipeProject: 'Business Intelligence',
    name:
        'Interactive Dashboard Creation for Rainbow Kids: Showcasing Data Insights and Visualizations',
    description:
        "Created an easy-to-use dashboard for Rainbow Kids using data visualisation to gain valuable insights, visualising all the details of students, the demographic students came from, the students' graphical choices, the student growth report and the viewers' instastory.",
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082037/dashboard_BI_jvweyh.png',
      'https://s3.amazonaws.com/msoe/files/callouts/wide_xlrg_computer-science-landing-page.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpGOCIhegp_J54Rvd8XrYCmTS395whGe71g&s',
    ],
  ), //no3
  ProjectPortofolio(
    tipeProject: 'Machine Learning',
    name: 'CatarAct: Early Cataract Detection',
    description:
        "Completed the capstone of Bangkit Academy led by Google, Tokopedia, Gojek, & Traveloka Project with built a model to classify between cataract and normal eyes for integration into the cloud and retrieval by mobile applications using Tensorflow with a model accuracy of 98% and a validity of 99%.",
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082037/ML_Cataract_w4ef8x.png',
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727617428/Screenshot_695_uhzovw.png',
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727617429/Screenshot_696_rtd9u9.png',
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727617428/Screenshot_697_rhosw4.png',
    ],
  ), //no4
  ProjectPortofolio(
    tipeProject: 'Machine Learning',
    name:
        'Developing a High-Performance NLP Model for Query Answering and Prediction: A Flask API Deployment"',
    description:
        "Completed an NLP project involving the development of a model capable of answering user queries and making predictions based on user input. This project encompassed prompt creation, training, validation, and testing using provided data. The model was successfully deployed via a Flask API for universal accessibility. It stands out as the best model, demonstrating optimal performance without overfitting or underfitting, evidenced by an accuracy loss of 0.0233 and an accuracy rate of 98.97%. The model generates accurate and relevant responses to user requests, fulfilling user requirements effectively",
    imageUrls: [
      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727082037/ML_NLP_kjbtbg.png',
      'https://s3.amazonaws.com/msoe/files/callouts/wide_xlrg_computer-science-landing-page.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFpGOCIhegp_J54Rvd8XrYCmTS395whGe71g&s',
    ],
  ), //no5
];
