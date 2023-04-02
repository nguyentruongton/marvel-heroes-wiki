/** @type {import('tailwindcss').Config} */
module.exports = {
    important: "#root",
    content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
    theme: {
        extend: {
            colors: {
                vividRed: "#F0131E",
            },
            fontFamily: {
                googleSansThin: ["GoogleSans-Thin", "Roboto", "san-serif"],
                googleSansLight: ["GoogleSans-Light", "Roboto", "san-serif"],
                googleSansRegular: [
                    "GoogleSans-Regular",
                    "Roboto",
                    "san-serif",
                ],
                googleSansMedium: ["GoogleSans-Medium", "Roboto", "san-serif"],
                googleSansBold: ["GoogleSans-Bold", "Roboto", "san-serif"],
                googleSansBlack: ["GoogleSans-Black", "Roboto", "san-serif"],
            },
        },
    },
    plugins: [],
};
