<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register for Audition | Come in CDK | Cinevestor</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --bg-gradient-1: #0f0c29;
            --bg-gradient-2: #302b63;
            --bg-gradient-3: #24243e;
            --accent-1: #FF3CAC;
            --accent-2: #784BA0;
            --accent-3: #2B86C5;
            --text-primary: #ffffff;
            --text-secondary: #b8c1ec;
            --text-tertiary: #8892b0;
            --card-bg: rgba(22, 28, 36, 0.8);
            --card-border: rgba(255, 255, 255, 0.1);
            --card-hover: rgba(255, 255, 255, 0.05);
            --transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            --shadow-neon: 0 0 15px rgba(255, 60, 172, 0.5);
            --shadow-glow: 0 0 20px rgba(43, 134, 197, 0.5);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            background: linear-gradient(135deg, var(--bg-gradient-1), var(--bg-gradient-2), var(--bg-gradient-3));
            background-attachment: fixed;
            color: var(--text-primary);
            font-family: 'Montserrat', sans-serif;
            overflow-x: hidden;
            line-height: 1.6;
        }
        
        h1, h2, h3, h4, h5 {
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            line-height: 1.2;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 2rem;
            position: relative;
            z-index: 1;
        }
       
        /* Registration Form Styles */
        .registration-section {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 8rem 0 5rem;
        }
        
        .registration-form {
            background: var(--card-bg);
            padding: 3rem;
            width: 46rem;
            border-radius: 10px;
            border: 1px solid var(--card-border);
            box-shadow: var(--shadow-glow);
        }
        
        .form-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .form-header h2 {
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            margin-bottom: 0.5rem;
        }
        
        .form-group {
            margin-bottom: 1.5rem;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--text-secondary);
        }
        
        .form-control {
            width: 100%;
            padding: 0.8rem 1rem;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid var(--card-border);
            border-radius: 5px;
            color: var(--text-primary);
            font-family: 'Montserrat', sans-serif;
            transition: var(--transition);
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--accent-1);
            box-shadow: var(--shadow-neon);
        }
        
        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='white'%3e%3cpath d='M7 10l5 5 5-5z'/%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 1rem center;
            background-size: 1rem;
        }
        
        .form-submit {
            background: linear-gradient(90deg, var(--accent-1), var(--accent-2));
            color: var(--text-primary);
            padding: 0.8rem 1.8rem;
            border-radius: 30px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            display: block;
            margin: 2rem auto 0;
            width: 100%;
            max-width: 300px;
        }
        
        .form-submit:hover {
            box-shadow: var(--shadow-neon);
            transform: translateY(-3px);
        }
        
        .role-badge {
            display: inline-block;
            background: rgba(255, 60, 172, 0.2);
            color: var(--accent-1);
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.9rem;
            margin-top: 0.5rem;
        }
        
        .payment-section {
            margin-top: 2rem;
            padding: 1.5rem;
            background: rgba(15, 12, 41, 0.5);
            border-radius: 10px;
            border: 1px solid var(--card-border);
        }
        
        .payment-methods {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
            flex-wrap: wrap;
        }
        
        .payment-method {
            flex: 1;
            min-width: 120px;
            padding: 1rem;
            background: var(--card-bg);
            border-radius: 5px;
            border: 1px solid var(--card-border);
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
        }
        
        .payment-method:hover {
            border-color: var(--accent-1);
        }
        
        .payment-method.active {
            border-color: var(--accent-1);
            box-shadow: var(--shadow-neon);
        }
        
        .payment-method img {
            height: 30px;
            margin-bottom: 0.5rem;
        }
        
        .payment-method p {
            font-size: 0.8rem;
            color: var(--text-tertiary);
        }

        
        /* Make in India and DPIIT Badges */
        .badges {
            display: flex;
            gap: 1.5rem;
            align-items: center;
            margin-top: 1.5rem;
        }
        
        .badge {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.9rem;
        }
        
        .badge img {
            height: 30px;
        }
        
        .company-info {
            margin-top: 1.5rem;
            font-size: 0.8rem;
            color: var(--text-tertiary);
            line-height: 1.6;
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .registration-form {
                padding: 2rem;
            }
            
            
            
            .registration-section {
                padding: 6rem 0 3rem;
            }
            
            .payment-methods {
                flex-direction: column;
            }
            
            .payment-method {
                width: 100%;
            }

            
            .badges {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
     
    <%@ include file="Navbar.jsp"%>
    <!-- Registration Section -->
    <section class="registration-section">
        <div class="container">
            <div class="registration-form">
                <div class="form-header">
                    <h2>Audition Registration</h2>
                    <p style="color: var(--text-secondary);">Apply for your role in "Come In CDK"</p>
                </div>
                
                <form id="auditionForm">
                    <div class="form-group">
                        <label for="fullName">Full Name</label>
                        <input type="text" id="fullName" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="age">Age</label>
                        <input type="number" id="age" class="form-control" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="gender">Gender</label>
                        <select id="gender" class="form-control" required>
                            <option value="">Select Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                            <option value="other">Other</option>
                            <option value="prefer-not">Prefer not to say</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="role">Role Applying For</label>
                        <select id="role" class="form-control" required>
                            <option value="">Select Role</option>
                            <option value="viraj">Viraj (Male, 25-30)</option>
                            <option value="rithwika">Rithwika (Female, 20-25)</option>
                            <option value="soumya">Soumya (Female, 25-30)</option>
                            <option value="rishi">Rishi (Male, 25-30)</option>
                            <option value="kashi">Kashi (Male, 25-30)</option>
                            <option value="anuja">Anuja (Female, 25-30)</option>
                            <option value="mausam">Mausam Chacha (Male, 40-50)</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="experience">Previous Acting Experience</label>
                        <textarea id="experience" class="form-control" rows="3" placeholder="Briefly describe your acting experience (if any)"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="videoLink">Video Submission Link</label>
                        <input type="url" id="videoLink" class="form-control" placeholder="YouTube/Vimeo/Dropbox link" required>
                        <small style="color: var(--text-tertiary);">Upload a 1-2 minute monologue or scene performance</small>
                    </div>
                    
                    <div class="form-group">
                        <label for="portfolio">Portfolio/Showreel Link (Optional)</label>
                        <input type="url" id="portfolio" class="form-control" placeholder="Website/IMDb link">
                    </div>
                    
                    <div class="payment-section">
                        <h4 style="margin-bottom: 1rem; color: var(--text-primary);">Registration Fee: ₹499</h4>
                        <p style="color: var(--text-secondary); margin-bottom: 1rem;">Select payment method:</p>
                        
                        <div class="payment-methods">
                            <div class="payment-method active" data-method="razorpay">
                                <img src="https://razorpay.com/assets/razorpay-glyph.svg" alt="Razorpay">
                                <p>Credit/Debit Cards, UPI, Net Banking</p>
                            </div>
                            <div class="payment-method" data-method="paypal">
                                <img src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_37x23.jpg" alt="PayPal">
                                <p>International Payments</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group" style="margin-top: 2rem;">
                        <input type="checkbox" id="terms" required>
                        <label for="terms" style="display: inline; margin-left: 0.5rem;">I agree to the <a href="Term" style="color: var(--accent-1);">terms and conditions</a> and understand the ₹499 registration fee is non-refundable</label>
                    </div>
                    
                    <button type="submit" class="form-submit">Proceed to Payment</button>
                </form>
            </div>
            
            <div style="text-align: center; margin-top: 3rem; color: var(--text-secondary);">
                <p>Need help with your application? Contact us at <a href="mailto:casting@cinevestor.in" style="color: var(--accent-1);">casting@cinevestor.in</a></p>
            </div>
        </div>
    </section>
    
    <%@ include file="Footer.jsp"%>

    <script>
        

        // Payment method selection
        const paymentMethods = document.querySelectorAll('.payment-method');
        paymentMethods.forEach(method => {
            method.addEventListener('click', () => {
                paymentMethods.forEach(m => m.classList.remove('active'));
                method.classList.add('active');
            });
        });

        // Form submission with payment integration
        document.getElementById('auditionForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Get form data
            const formData = {
                name: document.getElementById('fullName').value,
                email: document.getElementById('email').value,
                phone: document.getElementById('phone').value,
                age: document.getElementById('age').value,
                gender: document.getElementById('gender').value,
                role: document.getElementById('role').value,
                experience: document.getElementById('experience').value,
                videoLink: document.getElementById('videoLink').value,
                portfolio: document.getElementById('portfolio').value,
                paymentMethod: document.querySelector('.payment-method.active').dataset.method
            };
            
            // Here you would typically:
            // 1. Send form data to your Spring Boot backend
            // 2. Get payment details back
            // 3. Initialize payment gateway
            console.log('Form data:', formData);
            
            // For demo purposes, we'll simulate payment initiation
            initiatePayment(formData.paymentMethod);
        });
        
        function initiatePayment(method) {
            // This is where you would integrate with Razorpay/PayPal API
            // Below is a sample Razorpay integration structure
            
            if(method === 'razorpay') {
                const options = {
                    "key": "YOUR_RAZORPAY_KEY", // Your Razorpay Key ID
                    "amount": "49900", // 499 rupees in paise
                    "currency": "INR",
                    "name": "Cinevestor",
                    "description": "Audition Registration Fee",
                    "image": "https://cinevestor.in/c/logo.png",
                    "handler": function(response) {
                        // Handle successful payment
                        alert('Payment successful! Your application has been submitted.');
                        // Here you would send the payment response to your backend
                        console.log('Payment response:', response);
                    },
                    "prefill": {
                        "name": document.getElementById('fullName').value,
                        "email": document.getElementById('email').value,
                        "contact": document.getElementById('phone').value
                    },
                    "notes": {
                        "role": document.getElementById('role').value
                    },
                    "theme": {
                        "color": "#FF3CAC"
                    }
                };
                
                // In a real implementation, you would:
                // 1. Create an order on your backend
                // 2. Get the order ID
                // 3. Then initialize Razorpay with that order ID
                
                // For demo, we'll just show a success message
                alert('Redirecting to Razorpay payment gateway...');
                console.log('Razorpay options:', options);
                
                // Actual Razorpay integration would be:
                // const rzp = new Razorpay(options);
                // rzp.open();
                
            } else if(method === 'paypal') {
                alert('Redirecting to PayPal payment gateway...');
                // Similar PayPal integration would go here
            }
        }
    </script>
</body>
</html>