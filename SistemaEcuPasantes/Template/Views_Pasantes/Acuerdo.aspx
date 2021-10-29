<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Views_Pasantes/Pasantes.Master" AutoEventWireup="true" CodeBehind="Acuerdo.aspx.cs" Inherits="SistemaEcuPasantes.Template.Views_Pasantes.Acuerdo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="card text-dark bg-light mb-3 text-center" style="max-width: 100%;">
                <div class="card-header">Acuerdo de Confidencialidad</div>
                <div class="card-body">
                    <h5 class="card-title" style="text-align: start">Primera.- Comparecientes:</h5>
                    <p class="card-text" style="text-align: justify">
                        Por una parte comparece el MINISTERIO DE TRANSPORTE Y OBRAS PÚBLICAS, con domicilio, en la ciudad de QUITO, representada en este acto por el Dr. Teodoro Oswaldo Tamariz Valdivieso, en su calidad de Coordinador General Administrativo Financiero, en adelante EL MTOP, y por la otra parte, el/la Lcdo. Jorge Zaruma de la Dirección de Transporte Terrestre, Transito y Seguridad Vial, en calidad de Asistente de Matriculación Distrital, en adelante EL SERVIDOR, en lo sucesivo se denominaran en forma conjunta e indistinta LAS PARTES.

                        Que durante la mencionada relación las partes intercambiarán o crearán información que están interesadas en regular su confidencialidad y secreto mediante las siguientes condiciones que se detallan a continuación:
                    </p>

                    <h5 class="card-title" style="text-align: start">Segunda.-  Plazo:</h5>

                    <p class="card-text" style="text-align: justify">
                        •	Este acuerdo tendrá un plazo indefinido desde la firma del contrato laboral hasta su terminación.
                        •	En caso de que no se renueve el contrato, toda la información generada en el período de duración del contrato pertenecerá exclusivamente a EL MTOP. Quedando totalmente prohibido hacer cualquier uso y/o almacenamiento de la misma por terceros sin autorización de EL MTOP.
                        •	EL SERVIDOR se compromete a mantener el compromiso de confidencialidad respecto a la información y material generado en virtud del contrato, de forma indefinida tras la finalización del presente acuerdo.
                    </p>

                    <h5 class="card-title" style="text-align: start">Tercera.- Convenio de Confidencialidad:</h5>
                    <p class="card-text" style="text-align: justify">
                        •	EL SERVIDOR se obliga en forma irrevocable ante EL MTOP a no revelar, divulgar o facilitar bajo cualquier forma- a persona alguna sea natural o jurídica,  pública o privada, o de cualquier otra naturaleza, y a no utilizar para su propio beneficio o para beneficio de un tercero, toda la información generada durante la vigencia del presente contrato, así como la que pertenezca a EL MTOP. 
                        •	EL SERVIDOR no podrá reproducir, modificar, hacer pública, divulgar o utilizar de cualquier forma conocida o por conocerse a terceros o para su propio beneficio o para beneficio de cualquier otra persona natural o jurídica, la información objeto del presente Acuerdo sin previa autorización escrita y expresa por la Autoridad competente.
                    </p>


                    <h5 class="card-title" style="text-align: start">Cuarta.- Propiedad Intelectual</h5>
                    <p class="card-text" style="text-align: justify">
                        •	Toda la información, productos y servicios generados por los funcionarios y servidores públicos, personas naturales y jurídicas, públicas y privadas, relacionados con la institución serán de propiedad  del MTOP.
                        •	Los derechos de propiedad intelectual de la información que pertenecen al Ministerio de Transporte y Obras Públicas no podrán ser revelados por EL SERVIDOR para su reproducción parcial o total; así como su comunicación pública y distribución.
                        •	En caso de que la información resulte revelada, divulgada o utilizada por EL SERVIDOR de cualquier forma distinta al objeto de este Acuerdo, ya sea de forma dolosa o por mera negligencia, será sancionado de acuerdo a las leyes vigentes para el efecto. 
                    </p>

                    <h5 class="card-title" style="text-align: start">Quinta.- Cláusula de Responsabilidad</h5>
                    <p class="card-text" style="text-align: justify">
                        •	De igual forma, queda expresamente convenido que todo incumplimiento total y/o parcial imputable a EL SERVIDOR con relación a las obligaciones de confidencialidad asumidas por el presente, facultará a EL MTOP para disponer la terminación del contrato de trabajo con justa causa. Asimismo, EL MTOP queda facultado para accionar por los daños y perjuicios efectivamente ocasionados, así como para constituirse en parte demandante de una denuncia penal o acciones civiles y administrativas contra EL SERVIDOR.
                        •	EL SERVIDOR  se obliga a entregar cualquier documentación, antecedente facilitado en cualquier tipo de soporte y, en su caso, las copias obtenidas de los mismos, que constituyan información amparada por el deber de confidencialidad objeto del presente Acuerdo en el supuesto de que cese la relación entre las partes por cualquier motivo.
                        •	EL SERVIDOR se compromete a cumplir con todos los términos fijados en el presente documento, y muy especialmente aquellos relativos a las cláusulas sobre propiedad intelectual y confidencialidad; de no hacerlo se aplicará la normativa vigente.
                    </p>

                    <h5 class="card-title" style="text-align: start">Sexta. Divergencias y controversias.</h5>
                    <p class="card-text" style="text-align: justify">
                        •	En caso de cualquier conflicto o discrepancia que pueda surgir en relación con la interpretación y/o cumplimiento del presente Acuerdo, LAS PARTES se someten expresamente a las instancias Administrativas, a los Juzgados y Tribunales del País, con renuncia a su fuero propio, aplicándose la legislación ecuatoriana vigente.


                        Y en señal de expresa conformidad y aceptación de los términos recogidos en el presente Acuerdo, lo firman las partes por duplicado ejemplar y a un solo efecto.

                        En el Distrito Metropolitano de Quito, al 01 de marzo de 2018
                    </p>
                </div>
                <div class="form-check" style="text-align: left; margin-left: 30px">
                    <asp:CheckBox ID="ckbAcuerdo" required="required" runat="server"
                        AutoPostBack="True"
                        Text="Acepto los Terminos y condiciones y el aviso de privacidad"
                        TextAlign="Right" Checked="false" />
                </div>
                <div class="card-footer text-right">
                    <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" OnClick="btnGuardar_Click" Text="Aceptar" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
