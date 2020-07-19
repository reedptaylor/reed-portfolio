# [ScrumStorySizer](https://github.com/reedptaylor/ScrumPokerCards)

Scrum User Story Sizing Blazor App

<p align="center">
<img src="/images/scrum.png" width="200" style="border-radius: 25px;" title="Icon">
</p>

This app is built with Blazor WebAssembly (and previously Blazor Server) and servers as a way to vote on User Story sizes during sprint planning.

[Blazor Server Blog Post](/posts/new-project-scrum)

[Blazor WebAssembly Blog Post](/posts/new-project-scrum-wa)

[Example server](https://scrum.reedtaylor.org)

---

# Overdrive: Car Dashboard

<p align="center">
<img src="/images/overdrive.png" width="200" title="Icon">
</p>

A speedometer/GPS iOS app that provides a map and current conditions while diriving. Built with SwiftUI and UIKit.\
Uses OpenWeatherMap for weather and Apple Maps for map.\
[Available for free on Apple App Store](https://apps.apple.com/us/app/overdrive-car-dashboard/id1479640453)

#### Do not take eyes off the road when driving. Overdrive assumes no responsibility for accidents.

## Features
* Compass with direction and animation
* Speedometer
* Current street name
* Current local weather

---

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
