import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-dynam"
export default class extends Controller {
  static target= ["imageContainer"]

  connect() {
    this.updateImageDimensions();
    window.addEventListener("resize", () => this.updateImageDimensions());

  }

  updateImageDimensions() {
    const windowWidth = window.innerWidth;
    const newWidth = Math.round(windowWidth * 0.3);
    const newHeight = Math.round(newWidth * 1.25);

    console.log(windowWidth)
    console.log(newWidth)
    console.log(newHeight)
    const images = this.imageContainerTargets.querySelectorAll("img")
    console.log(images)
    // this.imageContainerTargets.forEach(image => {
    //   image.style.width = `${newWidth}`;
    //   image.style.height = `${newHeight}`;
    // });
  }
}
