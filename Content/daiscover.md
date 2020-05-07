# Daiscover: Flower Identification

<p align="center">
<img src="/images/daiscover.png" width="200" style="border-radius: 25px;" title="Icon">
</p>

A machine learning based iOS app that allows you to identify flowers from your camera.\
[Available for free on Apple App Store](https://apps.apple.com/us/app/daiscover/id1424132072)\
[Source code available on GitHub](https://github.com/reedptaylor/Daiscover-Flower-Identification)

##### Created with CreateML  
Source code for my iOS app that uses a deep learning image classifier to classify over 103 different species of flowers. Trained on a self augmented version of the VGG Flower dataset.

## Dataset
To create the datset for training with Apple's CreateML, I used the large VGG Flower dataset (found here http://www.robots.ox.ac.uk/~vgg/data/flowers/102/index.html) along with around 100-200 suplemental images dowloaded from Google for each of the categories.

## Models
This project uses a "FlowerOrNot" classify to first see if a photo has a flower in it, then performs flower classification on the "FlowerClassifier" model.

## Acknowledgements
Google images download (https://github.com/hardikvasa/google-images-download)  
VGG Flower Dataset (http://www.robots.ox.ac.uk/~vgg/data/flowers/102/index.html)
