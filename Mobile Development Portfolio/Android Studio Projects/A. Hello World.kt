// Rename it as MainActivity.kt

class MainActivity : ComponentActivity() {
 override fun onCreate(savedInstanceState: Bundle?) {
 super.onCreate(savedInstanceState)
 setContent {
 HelloWorldTheme {
 // A surface container using the 'background' color from the theme
 Surface(modifier = Modifier.fillMaxSize(), color = MaterialTheme.colorScheme.backgrou
 nd) {
 Greeting("Android")
 }
 }
 }
 }
 }
 @Composable
 fun Greeting(name: String, modifier: Modifier = Modifier) {
 Text(
 text = "Hello $name!",
 modifier = modifier
 )
 }
 @Preview(showBackground = true)
 @Composable
 fun GreetingPreview() {
 HelloWorldTheme {
 Greeting("Android")
 }
 }
