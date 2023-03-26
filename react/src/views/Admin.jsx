import React, { useEffect, useState } from "react";
import { useStateContext } from "../contexts/ContextProvider";
import { Navigate, Outlet, useNavigate } from "react-router-dom";
import CssBaseline from "@mui/material/CssBaseline";
import AdminAppBar from "../components/AdminAppBar";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import Footer from "../components/Footer";
import axiosClient from "../axios-client";
import { Button } from "@mui/material";

const theme = createTheme();

const Admin = () => {
    const navigate = useNavigate();
    const { user, token, setUser, setToken } = useStateContext();
    const [heros, setHeros] = useState([]);
    const [loading, setLoading] = useState(false);

    useEffect(() => {
        getHeros();
    }, []);

    const getHeros = () => {
        setLoading(true);
        axiosClient
            .get("/heros")
            .then(({ data }) => {
                setLoading(false);
                setHeros(data.data);
            })
            .catch(() => {
                setLoading(false);
            });
    };

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
            <main className="mb-5 p-4">
                <Outlet />
            </main>
            <Footer />
        </ThemeProvider>
    );
};

export default Admin;
