.class Lcom/oneplus/server/ssp$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/ssp;


# direct methods
.method constructor <init>(Lcom/oneplus/server/ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/ssp$zta;->zta:Lcom/oneplus/server/ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ssp$zta;->zta:Lcom/oneplus/server/ssp;

    invoke-static {v0, p1}, Lcom/oneplus/server/ssp;->zta(Lcom/oneplus/server/ssp;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lcom/oneplus/server/ssp$zta;->zta:Lcom/oneplus/server/ssp;

    invoke-static {p0}, Lcom/oneplus/server/ssp;->you(Lcom/oneplus/server/ssp;)V

    return-void
.end method
