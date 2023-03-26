import { useState, useEffect } from "react";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import CssBaseline from "@mui/material/CssBaseline";
import Grid from "@mui/material/Grid";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import { createTheme, ThemeProvider } from "@mui/material/styles";
import SearchAppBar from "../components/SearchAppBar";
import Footer from "../components/Footer";
import { Navigate, useNavigate } from "react-router-dom";
import { useStateContext } from "../contexts/ContextProvider";
import Pagination from "@mui/material/Pagination";
import axiosClient from "../axios-client";

const cards = [1, 2, 3, 4, 5, 6, 7, 8, 9];

const theme = createTheme();

export default function Home() {
    const navigate = useNavigate();
    const [heros, setHeros] = useState([]);
    const [loading, setLoading] = useState(false);
    const [detail, setDetail] = useState(false);

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

    return (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            <SearchAppBar />
            <main>
                {/* <Box
                    sx={{
                        bgcolor: "background.paper",
                        pt: 8,
                        pb: 6,
                    }}
                >
                    <Container maxWidth="sm">
                        <Typography
                            component="h1"
                            variant="h2"
                            align="center"
                            color="text.primary"
                            gutterBottom
                        >
                            Album layout
                        </Typography>
                        <Typography
                            variant="h5"
                            align="center"
                            color="text.secondary"
                            paragraph
                        >
                            Something short and leading about the collection
                            below—its contents, the creator, etc. Make it short
                            and sweet, but not too short so folks don&apos;t
                            simply skip over it entirely.
                        </Typography>
                        <Stack
                            sx={{ pt: 4 }}
                            direction="row"
                            spacing={2}
                            justifyContent="center"
                        >
                            <Button variant="contained">
                                Main call to action
                            </Button>
                            <Button variant="outlined">Secondary action</Button>
                        </Stack>
                    </Container>
                </Box> */}
                <Container sx={{ py: 4 }} maxWidth="md">
                    <Grid container spacing={4}>
                        {heros.map((hero) => (
                            <Grid item key={hero.id} xs={12} sm={6} md={4}>
                                <Card
                                    className="flex flex-col h-full rounded-xl hover:rounded-3xl duration-150 ease-linear transition-all cursor-pointer"
                                    variant="outlined"
                                    onClick={() =>
                                        navigate(`/detail/${hero.id}`)
                                    }
                                >
                                    <CardMedia
                                        component="img"
                                        image={hero.avatar}
                                        alt="avatar-hero"
                                    />
                                    <CardContent sx={{ flexGrow: 1 }}>
                                        <Typography
                                            gutterBottom
                                            variant="h5"
                                            component="h2"
                                        >
                                            {hero.alias}
                                        </Typography>
                                        <Typography className="truncate">
                                            {hero.description}
                                        </Typography>
                                    </CardContent>
                                </Card>
                            </Grid>
                        ))}
                    </Grid>
                </Container>
                {/* Phân trang */}
                <div className="flex justify-center align-center mb-10">
                    <Pagination count={10} />
                </div>
            </main>
            <Footer />
        </ThemeProvider>
    );
}
