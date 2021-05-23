.class Lcom/oneplus/server/zta$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/zta;


# direct methods
.method private constructor <init>(Lcom/oneplus/server/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/zta$tsu;->zta:Lcom/oneplus/server/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/server/zta;Lcom/oneplus/server/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/zta$tsu;-><init>(Lcom/oneplus/server/zta;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/zta$tsu;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, p1}, Lcom/oneplus/server/zta;->les(Lcom/oneplus/server/zta;Lorg/json/JSONArray;)V

    return-void
.end method
