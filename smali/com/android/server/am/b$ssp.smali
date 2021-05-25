.class Lcom/android/server/am/b$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/b;


# direct methods
.method constructor <init>(Lcom/android/server/am/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/b$ssp;->zta:Lcom/android/server/am/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/b$ssp;->zta:Lcom/android/server/am/b;

    invoke-static {p0, p1}, Lcom/android/server/am/b;->ssp(Lcom/android/server/am/b;Lorg/json/JSONArray;)V

    return-void
.end method
