Ecommerce APP



A Flutter-based Ecommerce mobile application that consumes external APIs to provide a seamless shopping experience with product browsing, cart management, and secure payment processing.


----------------------------------------------------------

Features :  
Browse products fetched from external APIs

Product details with images, descriptions, and reviews

Search and filter products

User authentication via APIs

Shopping cart management

Secure checkout and payment integration (e.g., Stripe)

Order history retrieval from APIs

User profile management





----------------------------------------------------------


Technologies Used :  


Frontend: Flutter

APIs: Third-party REST APIs for products, user management, orders, payments

Payment Gateway: Stripe (or other external service)



----------------------------------------------------------




Getting Started:


Prerequisites
Flutter SDK installed (Flutter installation guide)

An API key or credentials for the external APIs you are using (products, auth, payment)

Android Studio or Xcode for running on emulator or device




----------------------------------------------------------


Installation:
Clone the repository




git clone https://github.com/ahmedshaban-blip/e_commerce_app.git
cd e_commerce_app
Install dependencies



flutter pub get
Configure API keys and endpoints

Create a .env file or set up your config to include your API base URLs and keys:

env


API_BASE_URL=https://api.example.com
STRIPE_PUBLISHABLE_KEY=pk_test_***********
AUTH_API_KEY=your_auth_api_key
Run the app




flutter run



----------------------------------------------------------



Usage:

Open the app and register/login using your credentials.

Browse and search products loaded from external APIs.

Add products to the cart.

Proceed to checkout and make payments securely through Stripe.

View your order history and profile details fetched from APIs.





----------------------------------------------------------

Folder Structure:



/lib
  /models       # Data models for API responses
  /screens     # UI Screens
  /services    # API service calls
  /widgets     # Reusable UI components
  /utils       # Utility/helper functions
Contributing
Feel free to submit issues or pull requests to improve the app!


----------------------------------------------------------
Contact:  
ahmed.shabaan.dev@gmail.com
