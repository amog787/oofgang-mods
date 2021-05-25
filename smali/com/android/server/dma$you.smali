.class Lcom/android/server/dma$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/dma;


# direct methods
.method private constructor <init>(Lcom/android/server/dma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/dma$you;->zta:Lcom/android/server/dma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dma;Lcom/android/server/dma$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dma$you;-><init>(Lcom/android/server/dma;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/dma$you;->zta:Lcom/android/server/dma;

    invoke-static {p0, p1}, Lcom/android/server/dma;->cno(Lcom/android/server/dma;Lorg/json/JSONArray;)V

    return-void
.end method
