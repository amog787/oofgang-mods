.class Lyou/zta/zta/zta/cno/zta$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/cno/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/cno/zta;


# direct methods
.method private constructor <init>(Lyou/zta/zta/zta/cno/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/cno/zta$you;->zta:Lyou/zta/zta/zta/cno/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyou/zta/zta/zta/cno/zta;Lyou/zta/zta/zta/cno/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/cno/zta$you;-><init>(Lyou/zta/zta/zta/cno/zta;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/cno/zta$you;->zta:Lyou/zta/zta/zta/cno/zta;

    invoke-static {p0, p1}, Lyou/zta/zta/zta/cno/zta;->zta(Lyou/zta/zta/zta/cno/zta;Lorg/json/JSONArray;)V

    return-void
.end method
