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
import { Box, Stack, Button } from "@mui/material";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";

const theme = createTheme();

export default function Home() {
    const navigate = useNavigate();
    const [heros, setHeros] = useState([]);
    const [loading, setLoading] = useState(false);

    useEffect(() => {
        getHeros();
        document.title = "MCU Hero Wiki";
    }, []);

    const getHeros = async () => {
        // setLoading(true);
        await axiosClient
            .get("/heros")
            .then(({ data }) => {
                // setLoading(false);
                setHeros(data.data);
            })
            .catch(() => {
                // setLoading(false);
            });
    };

    const [noOfElement, setNoOfElement] = useState(3);
    const slice = heros.slice(0, noOfElement);
    const loadMore = () => {
        setNoOfElement(noOfElement + noOfElement);
    };

    const [filteredData, setFilteredData] = useState([]);
    const [wordEntered, setWordEntered] = useState("");
    const handleFilter = (event) => {
        const searchWord = event.target.value;
        setWordEntered(searchWord);
        const newFilter = heros.filter((value) => {
            return value.alias.toLowerCase().includes(searchWord.toLowerCase());
        });
        setFilteredData(newFilter);
    };

    const renderPaging = (
        <>
            {slice.map((hero) => (
                <Grid item key={hero.id} xs={12} sm={6} md={4}>
                    <Card
                        className="flex flex-col h-full rounded-xl hover:rounded-3xl duration-150 ease-linear transition-all cursor-pointer"
                        variant="outlined"
                        onClick={() => navigate(`/detail/${hero.id}`)}
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
        </>
    );

    const renderSearch = (
        <>
            {filteredData.map((hero) => (
                <Grid item key={hero.id} xs={12} sm={6} md={4}>
                    <Card
                        className="flex flex-col h-full rounded-xl hover:rounded-3xl duration-150 ease-linear transition-all cursor-pointer"
                        variant="outlined"
                        onClick={() => navigate(`/detail/${hero.id}`)}
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
        </>
    );

    return (
        <ThemeProvider theme={theme}>
            <CssBaseline />
            <SearchAppBar onChange={handleFilter} value={wordEntered} />
            <main>
                <Box
                    sx={{
                        bgcolor: "background.paper",
                        pt: 8,
                        pb: 6,
                    }}
                >
                    <Container maxWidth="md">
                        <Typography
                            component="h1"
                            variant="h2"
                            align="center"
                            color="text.primary"
                            gutterBottom
                        >
                            Marvel Cinematic Universe Hero Wiki
                        </Typography>
                        <Typography
                            variant="body1"
                            align="justify"
                            color="text.secondary"
                            paragraph
                        >
                            Marvel Cinematic Universe Hero Wiki là một trang web
                            chuyên về các phim của Marvel, bao gồm cả các bộ
                            phim chiếu rạp và các series truyền hình của Marvel.
                            Trang web cung cấp thông tin chi tiết về các nhân
                            vật, diễn viên, đạo diễn, cốt truyện, sản xuất và
                            các chi tiết khác liên quan đến Marvel Cinematic
                            Universe. Ngoài ra, trang web cũng cập nhật những
                            tin tức mới nhất về các bộ phim và series của
                            Marvel, cũng như đánh giá và nhận xét về chất lượng
                            của chúng. Nếu bạn là một fan của Marvel và muốn tìm
                            hiểu thêm về MCU, thì Marvel Cinematic Universe Hero
                            Wiki chắc chắn là một nguồn tài nguyên hữu ích cho
                            bạn.
                        </Typography>
                    </Container>
                </Box>
                <Container sx={{ py: 4 }} maxWidth="md">
                    <Grid container spacing={4}>
                        {wordEntered === "" ? renderPaging : renderSearch}
                    </Grid>
                </Container>
                {/* Phân trang */}
                {heros.length > noOfElement ? (
                    <div className="flex justify-center align-center mb-10">
                        {/* <Pagination
                        count={total}
                        page={page}
                        onChange={handleChangePage}
                    /> */}
                        <Button
                            className="rounded-full normal-case border-vividRed text-vividRed hover:bg-vividRed hover:text-white"
                            variant="outlined"
                            startIcon={<ExpandMoreIcon />}
                            onClick={loadMore}
                        >
                            Xem thêm
                        </Button>
                    </div>
                ) : null}
            </main>
            <Footer />
        </ThemeProvider>
    );
}
