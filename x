<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full Screen Billboard</title>
    <style>
        /* --- LAYOUT SETTINGS --- */
        :root {
            --bg-color: #f4f4f4;       /* Background color of the whole page */
            --text-color: #000000;     /* Main text color */
            --sub-text-color: #555555; /* Secondary text color */
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            
            /* Full Height Layout */
            min-height: 100vh;
            width: 100%;
            
            /* Center the content perfectly */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            
            padding: 40px; /* Small gap from the edge of screen */
            text-align: center; /* Center align text */
            cursor: default; /* Ensure no pointer icon appears */
        }

        /* --- CONTAINER FOR READABILITY --- */
        /* This keeps text from stretching too wide on huge monitors, 
           but doesn't look like a box/card. */
        .content-wrapper {
            max-width: 1200px; 
            width: 100%;
        }

        /* --- MASSIVE TYPOGRAPHY --- */
        
        /* The Headline: Scales with screen width */
        h1 {
            font-size: 6vw; /* 6% of the viewport width (Huge) */
            font-weight: 900;
            line-height: 1.1;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: -2px;
        }

        /* The Sub-headline / Date */
        h2 {
            font-size: 2vw; /* Scales with screen */
            font-weight: 700;
            color: var(--sub-text-color);
            text-transform: uppercase;
            letter-spacing: 4px;
            margin-bottom: 50px;
        }

        /* The Main Body Text */
        p {
            font-size: 1.5rem; /* Large, readable size */
            line-height: 1.6;
            color: var(--sub-text-color);
            max-width: 800px; /* Limits line length for easier reading */
            margin: 0 auto 40px auto; /* Centers paragraph block */
        }

        /* --- OPTIONAL FULL WIDTH IMAGE --- */
        .billboard-image {
            width: 100%;
            height: 50vh; /* Takes up half the screen height */
            background-color: #ccc;
            margin-bottom: 50px;
            display: none; /* Hidden by default, remove 'display: none' to use */
        }

        .billboard-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        /* --- RESPONSIVE ADJUSTMENTS --- */
        @media (max-width: 768px) {
            h1 { font-size: 12vw; }   /* Even bigger relative size on mobile */
            h2 { font-size: 4vw; }
            p  { font-size: 1.2rem; } /* Slightly smaller on mobile */
            body { padding: 20px; }
        }
    </style>
</head>
<body>

    <div class="content-wrapper">

        <!-- OPTIONAL: Full Width Image Area -->
        <!-- 
        <div class="billboard-image" style="display:block;">
            <img src="YOUR_IMAGE_URL.jpg" alt="Background Visual">
        </div> 
        -->

        <!-- SUBHEADLINE / TAGLINE -->
        <h2>[INSERT TAGLINE OR DATE HERE]</h2>

        <!-- MAIN HEADLINE (MASSIVE) -->
        <h1>[INSERT YOUR MAIN HEADLINE HERE]</h1>

        <!-- BODY TEXT -->
        <p>
            [Insert your main text here. This text is large and legible, designed to be read from a distance like a billboard. It fills the screen without being contained in a box.]
        </p>

        <!-- SECOND PARAGRAPH (Optional) -->
        <!-- 
        <p>
            [Insert additional text here.]
        </p> 
        -->

        <!-- FOOTER CREDIT -->
        <div style="margin-top: 60px; font-size: 1rem; color: #999; letter-spacing: 1px;">
            [INSERT FOOTER CREDIT]
        </div>

    </div>

</body>
</html>