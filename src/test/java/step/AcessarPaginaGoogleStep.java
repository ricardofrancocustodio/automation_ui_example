package step;

import core.DriverFactory;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Quando;
import io.cucumber.java.pt.Entao;
import page.AcessarPaginaGooglePage;

public class AcessarPaginaGoogleStep {

    private AcessarPaginaGooglePage acessarPaginaGooglePage;


    public AcessarPaginaGoogleStep(){
        DriverFactory.getDriver();
    }

    @Dado("que o qa enginner acessa a pagina inicial do google")
    public void queOQaEnginnerAcessaAPaginaInicialDoGoogle() {

    }

    @Quando("realizada a busca pelo termo")
    public void realizadaABuscaPeloTermo() {
        
    }

    @Entao("a tela com os resultados da pesquisa e apresentada")
    public void aTelaComOsResultadosDaPesquisaEApresentada() {
    }
}
