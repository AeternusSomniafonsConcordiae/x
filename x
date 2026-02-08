<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Static Poster / Billboard</title>
    <style>
        /* --- VISUAL SETTINGS --- */
        :root {
            --wall-bg: #e0e0e0;         /* The wall color behind the poster */
            --poster-bg: #ffffff;       /* The poster paper color */
            --text-main: #111111;       /* Main text color (Black/Dark Grey) */
            --text-sub: #555555;        /* Subtitle color */
            --poster-width: 550px;      /* Width of the poster */
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            background-color: var(--wall-bg);
            color: var(--text-main);
            
            /* Centers the poster in the middle of the screen */
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px;
            
            /* Ensures the cursor stays default, never a "hand" pointer */
            cursor: default;
        }

        /* --- THE POSTER CONTAINER --- */
        .poster {
            background-color: var(--poster-bg);
            width: 100%;
            max-width: var(--poster-width);
            
            /* Visual styling for a poster look */
            border-radius: 4px; /* Slight roundness, or 0 for sharp edges */
            box-shadow: 0 15px 35px rgba(0,0,0,0.2); /* Static shadow, no blur changes */
            overflow: hidden;
            text-align: center; /* Center align text by default */
        }

        /* --- IMAGE AREA --- */
        .poster-image {
            width: 100%;
            height: 300px; /* Adjust height as needed */
            background-color: #cccccc;
            display: block;
            overflow: hidden;
        }

        .poster-image img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures image fills the space perfectly */
            display: block;
        }

        /* --- TEXT CONTENT AREA --- */
        .poster-content {
            padding: 40px 50px;
        }

        /* --- TYPOGRAPHY --- */
        h1 {
            font-size: 32px;
            font-weight: 800;
            text-transform: uppercase; /* Poster style: all caps */
            letter-spacing: 1px;
            margin-bottom: 15px;
            line-height: 1.2;
        }

        h2 {
            font-size: 16px;
            font-weight: 500;
            color: var(--text-sub);
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 25px;
            border-bottom: 1px solid #ddd;
            display: inline-block;
            padding-bottom: 5px;
        }

        p {
            font-size: 16px;
            color: #444;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        /* Small footer credit style */
        .poster-footer {
            margin-top: 30px;
            font-size: 12px;
            color: #999;
            font-style: italic;
        }

        /* --- MOBILE TWEAKS --- */
        @media (max-width: 600px) {
            .poster-content { padding: 30px 25px; }
            h1 { font-size: 24px; }
            .poster-image { height: 200px; }
        }
    </style>
</head>
<body>

    <div class="poster">
        
        <!-- 1. IMAGE SECTION -->
        <!-- Remove this block if you don't want a top image -->
        <div class="poster-image">
            <!-- Replace src with your image URL -->
            <img src="https://picsum.photos/seed/poster/600/400" alt="Poster Main Visual">
        </div>

        <div class="poster-content">
            
            <!-- 2. SUBTITLE / TAGLINE -->
            <h2>[INSERT TAGLINE OR DATE HERE]</h2>

            <!-- 3. MAIN HEADLINE -->
            <h1>[INSERT YOUR MAIN HEADLINE HERE]</h1>

            <!-- 4. BODY TEXT -->
            <p>
                [Insert your descriptive text here. Since this is a billboard style, keep sentences concise and impactful. The text is centered and static.]
            </p>

            <p>
                [You can add a second paragraph here for additional details, location, or information.]
            </p>

            <!-- 5. FOOTER / CREDIT (Optional) -->
            <div class="poster-footer">
                [Insert footer info, e.g., "Created by ..." or "www.yoursite.com"]
            </div>

        </div>
    </div>

</body>
</html>
