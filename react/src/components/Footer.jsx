import React from "react";
import Divider from "../components/Divider";
import Copyright from "../components/Copyright";
import { Box } from "@mui/material";
import { Link } from "react-router-dom";

const Footer = () => {
    return (
        <>
            <Divider />
            <Box
                className="flex justify-between items-center p-3"
                component="footer"
            >
                <Link
                    to={"/"}
                    className="cursor-pointer font-googleSansBold text-2xl hover:text-vividRed"
                >
                    TTT Group
                </Link>
                <Copyright />
            </Box>
        </>
    );
};

export default Footer;
