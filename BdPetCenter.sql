USE [BdPetCenter]
GO
/****** Object:  Table [dbo].[Afp]    Script Date: 03/11/2017 1:53:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Afp](
	[AfpId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Aporte] [decimal](13, 3) NOT NULL,
	[Comision] [decimal](13, 3) NOT NULL,
	[Seguro] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Afp] PRIMARY KEY CLUSTERED 
(
	[AfpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asistencia]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asistencia](
	[AsistenciaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaSalida] [datetime] NULL,
 CONSTRAINT [PK_Asistencia] PRIMARY KEY CLUSTERED 
(
	[AsistenciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banco]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banco](
	[BancoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[BancoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Concepto]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concepto](
	[ConceptoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Tipo] [smallint] NOT NULL,
	[TipoConcepto] [smallint] NULL,
	[calculo1] [varchar](50) NOT NULL,
	[calculo2] [varchar](50) NOT NULL,
	[calculo3] [varchar](50) NOT NULL,
	[calculo4] [varchar](50) NOT NULL,
	[calculo5] [varchar](50) NOT NULL,
	[calculo6] [varchar](50) NOT NULL,
	[Operador1] [varchar](50) NOT NULL,
	[Operador2] [varchar](50) NOT NULL,
	[Operador3] [varchar](50) NOT NULL,
	[Operador4] [varchar](50) NOT NULL,
	[Operador5] [varchar](50) NOT NULL,
	[Escala1] [decimal](10, 3) NOT NULL,
	[Escala2] [decimal](10, 3) NOT NULL,
	[Escala3] [decimal](10, 3) NOT NULL,
	[Escala4] [decimal](10, 3) NOT NULL,
	[Escala5] [decimal](10, 3) NOT NULL,
	[Escala6] [decimal](10, 3) NOT NULL,
	[Porcentaje1] [decimal](10, 3) NOT NULL,
	[Porcentaje2] [decimal](10, 3) NOT NULL,
	[Porcentaje3] [decimal](10, 3) NOT NULL,
	[Porcentaje4] [decimal](10, 3) NOT NULL,
	[Porcentaje5] [decimal](10, 3) NOT NULL,
	[Porcentaje6] [decimal](10, 3) NOT NULL,
	[Importe1] [decimal](10, 3) NOT NULL,
	[Importe2] [decimal](10, 3) NOT NULL,
	[Importe3] [decimal](10, 3) NOT NULL,
	[Importe4] [decimal](10, 3) NOT NULL,
	[Importe5] [decimal](10, 3) NOT NULL,
	[Importe6] [decimal](10, 3) NOT NULL,
 CONSTRAINT [PK_Concepto] PRIMARY KEY CLUSTERED 
(
	[ConceptoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contrato](
	[ContratoId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[EsAfp] [bit] NULL,
	[SueldoBase] [decimal](13, 3) NOT NULL,
	[UbigeoId] [int] NOT NULL,
	[JornadaTrabajo] [decimal](13, 3) NULL,
	[RenumeracionLetra] [varchar](400) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaTermino] [datetime] NULL,
	[Estado] [nchar](10) NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[ContratoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[CodigoEmpleado] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Sexo] [bit] NOT NULL,
	[Direccion] [varchar](250) NOT NULL,
	[Telefono] [varchar](30) NOT NULL,
	[Movil] [varchar](30) NOT NULL,
	[Correo] [varchar](150) NOT NULL,
	[TieneHijo] [bit] NOT NULL,
	[Documento] [varchar](50) NOT NULL,
	[Habilitado] [bit] NULL,
	[EsAfp] [bit] NULL,
	[LugarNacimiento] [varchar](150) NULL,
	[CodigoEsSalud] [varchar](50) NULL,
	[UbigeoId] [int] NULL,
	[Referencia] [varchar](250) NULL,
	[BancoId] [int] NULL,
	[TipoCuentaId] [int] NULL,
	[NumeroCuenta] [varchar](50) NULL,
	[MonedaId] [int] NULL,
	[FechaIngreso] [date] NULL,
	[CUSSP] [varchar](50) NULL,
	[FechaInicioContrato] [date] NULL,
	[FechaFinContrato] [date] NULL,
	[EstadoCivil] [smallint] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpleadoAfp]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoAfp](
	[EmpleadoAfpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[AfpId] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EmpleadoAfp] PRIMARY KEY CLUSTERED 
(
	[EmpleadoAfpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpleadoOnp]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoOnp](
	[EmpleadoOnpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[OnpId] [int] NOT NULL,
 CONSTRAINT [PK_EmpleadoOnp] PRIMARY KEY CLUSTERED 
(
	[EmpleadoOnpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpleadoSueldoBase]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoSueldoBase](
	[EmpleadoSueldoBaseId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[SueldoBase] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EmpleadoSueldoBase] PRIMARY KEY CLUSTERED 
(
	[EmpleadoSueldoBaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EsSalud]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EsSalud](
	[EsSaludId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_EsSalud] PRIMARY KEY CLUSTERED 
(
	[EsSaludId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Falta]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Falta](
	[FaltaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaTermino] [datetime] NULL,
	[CantidadDias] [datetime] NULL,
 CONSTRAINT [PK_Falta] PRIMARY KEY CLUSTERED 
(
	[FaltaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Justificacion]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Justificacion](
	[JustificacionId] [int] IDENTITY(1,1) NOT NULL,
	[FaltaId] [int] NULL,
	[Descripcion] [varchar](500) NULL,
	[Documento] [varbinary](max) NULL,
	[Estado] [bit] NOT NULL,
	[UsuarioAprueba] [int] NULL,
	[FechaAprobacion] [datetime] NULL,
	[UsuarioNiega] [int] NULL,
	[FechaNegacion] [datetime] NULL,
 CONSTRAINT [PK_Justificacion] PRIMARY KEY CLUSTERED 
(
	[JustificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moneda](
	[MonedaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Moneda] PRIMARY KEY CLUSTERED 
(
	[MonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Onp]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Onp](
	[OnpId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Aporte] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Onp] PRIMARY KEY CLUSTERED 
(
	[OnpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Planilla]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planilla](
	[PlanillaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId_Aprueba] [int] NULL,
	[UitId] [int] NOT NULL,
	[SueldoMinimoId] [int] NOT NULL,
	[Aprobado] [bit] NOT NULL,
	[Pagado] [bit] NOT NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Planilla] PRIMARY KEY CLUSTERED 
(
	[PlanillaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanillaEmpleado]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanillaEmpleado](
	[PlanillaEmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[PlanillaId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[AfpId] [int] NOT NULL,
	[OnpId] [int] NOT NULL,
	[TotalIngreso] [decimal](13, 3) NOT NULL,
	[TotalDescuento] [decimal](13, 3) NOT NULL,
	[TotalNeto] [decimal](13, 3) NOT NULL,
	[TotalAporte] [decimal](13, 3) NOT NULL,
 CONSTRAINT [PK_PlanillaEmpleado] PRIMARY KEY CLUSTERED 
(
	[PlanillaEmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlanillaEmpleadoConcepto]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanillaEmpleadoConcepto](
	[PlanillaEmpleadoConceptoId] [int] IDENTITY(1,1) NOT NULL,
	[PlanillaEmpleadoId] [int] NOT NULL,
	[ConceptoId] [int] NOT NULL,
	[Importe] [decimal](13, 3) NOT NULL,
 CONSTRAINT [PK_PlanillaEmpleadoConcepto] PRIMARY KEY CLUSTERED 
(
	[PlanillaEmpleadoConceptoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SeguroVidaLey]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SeguroVidaLey](
	[SeguroVidaLeyId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_SeguroVidaLey] PRIMARY KEY CLUSTERED 
(
	[SeguroVidaLeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SueldoMinimo]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SueldoMinimo](
	[SueldoMinimoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_SueldoMinimo] PRIMARY KEY CLUSTERED 
(
	[SueldoMinimoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tardanza]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tardanza](
	[TardanzaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaTardanza] [datetime] NOT NULL,
	[Minutos] [decimal](13, 3) NULL,
 CONSTRAINT [PK_Tardanza] PRIMARY KEY CLUSTERED 
(
	[TardanzaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoCuenta]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCuenta](
	[TipoCuentaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
 CONSTRAINT [PK_TipoCuenta] PRIMARY KEY CLUSTERED 
(
	[TipoCuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[TipoDocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubigeo](
	[UbigeoId] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Departamento] [varchar](100) NULL,
	[Provincia] [varchar](100) NULL,
	[Distrito] [varchar](100) NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[UbigeoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Uit]    Script Date: 03/11/2017 1:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Uit](
	[UitId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Valor] [decimal](13, 3) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Uit] PRIMARY KEY CLUSTERED 
(
	[UitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Asistencia] CHECK CONSTRAINT [FK_Asistencia_Empleado]
GO
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Empleado]
GO
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Ubigeo] FOREIGN KEY([UbigeoId])
REFERENCES [dbo].[Ubigeo] ([UbigeoId])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Ubigeo]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Banco] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Banco] ([BancoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Banco]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Moneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[Moneda] ([MonedaId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Moneda]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoCuenta] FOREIGN KEY([TipoCuentaId])
REFERENCES [dbo].[TipoCuenta] ([TipoCuentaId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoCuenta]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_TipoDocumento] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumento] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_TipoDocumento]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Ubigeo] FOREIGN KEY([UbigeoId])
REFERENCES [dbo].[Ubigeo] ([UbigeoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Ubigeo]
GO
ALTER TABLE [dbo].[EmpleadoAfp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoAfp_Afp] FOREIGN KEY([AfpId])
REFERENCES [dbo].[Afp] ([AfpId])
GO
ALTER TABLE [dbo].[EmpleadoAfp] CHECK CONSTRAINT [FK_EmpleadoAfp_Afp]
GO
ALTER TABLE [dbo].[EmpleadoAfp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoAfp_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoAfp] CHECK CONSTRAINT [FK_EmpleadoAfp_Empleado]
GO
ALTER TABLE [dbo].[EmpleadoOnp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoOnp_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoOnp] CHECK CONSTRAINT [FK_EmpleadoOnp_Empleado]
GO
ALTER TABLE [dbo].[EmpleadoOnp]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoOnp_Onp] FOREIGN KEY([OnpId])
REFERENCES [dbo].[Onp] ([OnpId])
GO
ALTER TABLE [dbo].[EmpleadoOnp] CHECK CONSTRAINT [FK_EmpleadoOnp_Onp]
GO
ALTER TABLE [dbo].[EmpleadoSueldoBase]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoSueldoBase_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[EmpleadoSueldoBase] CHECK CONSTRAINT [FK_EmpleadoSueldoBase_Empleado]
GO
ALTER TABLE [dbo].[Falta]  WITH CHECK ADD  CONSTRAINT [FK_Falta_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Falta] CHECK CONSTRAINT [FK_Falta_Empleado]
GO
ALTER TABLE [dbo].[Justificacion]  WITH CHECK ADD  CONSTRAINT [FK_Justificacion_Falta] FOREIGN KEY([FaltaId])
REFERENCES [dbo].[Falta] ([FaltaId])
GO
ALTER TABLE [dbo].[Justificacion] CHECK CONSTRAINT [FK_Justificacion_Falta]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_Empleado] FOREIGN KEY([EmpleadoId_Aprueba])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_Empleado]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_SueldoMinimo] FOREIGN KEY([SueldoMinimoId])
REFERENCES [dbo].[SueldoMinimo] ([SueldoMinimoId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_SueldoMinimo]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_Uit] FOREIGN KEY([UitId])
REFERENCES [dbo].[Uit] ([UitId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_Uit]
GO
ALTER TABLE [dbo].[PlanillaEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleado_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleado] CHECK CONSTRAINT [FK_PlanillaEmpleado_Empleado]
GO
ALTER TABLE [dbo].[PlanillaEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleado_Planilla] FOREIGN KEY([PlanillaId])
REFERENCES [dbo].[Planilla] ([PlanillaId])
GO
ALTER TABLE [dbo].[PlanillaEmpleado] CHECK CONSTRAINT [FK_PlanillaEmpleado_Planilla]
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleadoConcepto_Concepto] FOREIGN KEY([ConceptoId])
REFERENCES [dbo].[Concepto] ([ConceptoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto] CHECK CONSTRAINT [FK_PlanillaEmpleadoConcepto_Concepto]
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_PlanillaEmpleadoConcepto_PlanillaEmpleado] FOREIGN KEY([PlanillaEmpleadoId])
REFERENCES [dbo].[PlanillaEmpleado] ([PlanillaEmpleadoId])
GO
ALTER TABLE [dbo].[PlanillaEmpleadoConcepto] CHECK CONSTRAINT [FK_PlanillaEmpleadoConcepto_PlanillaEmpleado]
GO
ALTER TABLE [dbo].[Tardanza]  WITH CHECK ADD  CONSTRAINT [FK_Tardanza_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Tardanza] CHECK CONSTRAINT [FK_Tardanza_Empleado]
GO
