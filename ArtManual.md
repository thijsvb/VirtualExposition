# Art Manual

These are instructions to add artworks to the *Virtual Exposition* app.

1. Make an artwork in Tilt Brush
2. Export it (the export button is under the gear icon)
3. Run the [Pattern Generator](PatternGenerator) to create a pattern for the pedestal
4. Open the [Vuforia Developer Console](http://developer.vuforia.com) and log in
5. Under *Target Manager* either add a new database or open an existing one
6. Add a target
7. Make it a Cuboid Target, with a size of 5 by 5 by 1
8. Add the images created by the Pattern Generator to the Cuboid Target
9. Repeat steps 1-8 for every artwork
10. Download the database
11. Open the *VirtualExposition* in Unity
12. Go to the *Exposition* scene and import the database under *Assets -> Import package -> Custom package*
13. Open the *ARCamera* in the inspector and activate the database
14. From *Vuforia -> Prefabs* drag a Cuboid Target anywhere into the scene
15. Import the *.fbx* file Tilt Brush exported into the assets
16. Drag the artwork on top of the Cuboid Target in the *Hierarchy*
17. Position the artwork relative to the Cuboid Target in the scene
18. Repeat steps 14-17 for every artwork
19. Open *Build Settings* and build the app
