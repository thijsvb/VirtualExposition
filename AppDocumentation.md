# App Documentation
This is a documentation of the process of making the Virtual Exposition app.

## Displaying Tilt Brush Sketches
Since the entire point of this project is to display Tilt Brush sketches, 
I started out by looking at ways they could be exported from Tilt Brush. 

What I found is that exporting the shapes is fairly easy, either as `.fbx` or `.obj` files. 
However, these files lose all texture and color information.
There are ways around this, since Tilt Brush also offers all the textures used in a sketch. 
By using 3D graphics software like *Houdini* colors and textures can be added by hand.

Later Google released their Tilt Brush Unity Toolkit, which can export sketches from Tilt Brush into Unity with all colors and textures.
This means the imported model in Unity looks exactly like it was created in Tilt Brush. 
Because I was already making the app in Unity, I decided to use this.

More detailed documentation of various ways of exporting Tilt Brush sketches I tried out can be found in [this repository](http://github.com/thijsvb/TiltBrushDisplay).

## Using the Vuforia AR Platform
To make the models appear on empty pedestals I used the Vuforia AR platform for Unity.

Vuforia can recognise various types of targets; images, cuboids, cylinders and 3D objects.
For an image target it just needs an image. For a cuboid target it needs the dimensions of the cube and an image for each of the faces. For a cylinder target it needs the dimensions and an image to wrap around the cylinder, as well as an image for both the top and the bottom. Finally, for the 3D object target you have to scan an object using an app Vuforia made.

I registered at Vuforia to get a license key and created a database. To this database I could add targets and upload the images. I tried out all of the targets and decided that the cuboid would be best for tracking the top of a pedestal.



## Making the Pattern Generator

## Final Product
