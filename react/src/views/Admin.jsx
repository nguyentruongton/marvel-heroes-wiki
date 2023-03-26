import React, { useEffect } from "react";
import { useStateContext } from "../contexts/ContextProvider";
import { Navigate, useNavigate } from "react-router-dom";
import CssBaseline from "@mui/material/CssBaseline";
import AdminAppBar from "../components/AdminAppBar";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import Footer from "../components/Footer";
import axiosClient from "../axios-client";

const theme = createTheme();

const Admin = () => {
    const { user, token, setUser, setToken } = useStateContext();

    //Kiểm tra nếu không có token thì chuyến về trang Login
    if (!token) {
        return <Navigate to="/login" />;
    }

    const onLogout = (event) => {
        event.preventDefault();
        axiosClient.post("/logout").then(() => {
            setUser({});
            setToken(null);
        });
    };

    return (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            <AdminAppBar logout={onLogout} />
            <Footer />
        </ThemeProvider>
    );
};

export default Admin;
