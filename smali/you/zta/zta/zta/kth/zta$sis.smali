.class Lyou/zta/zta/zta/kth/zta$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/kth/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/kth/zta;


# direct methods
.method private constructor <init>(Lyou/zta/zta/zta/kth/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta$sis;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyou/zta/zta/zta/kth/zta;Lyou/zta/zta/zta/kth/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta$sis;-><init>(Lyou/zta/zta/zta/kth/zta;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta$sis;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v0, p1}, Lyou/zta/zta/zta/kth/zta;->ssp(Lyou/zta/zta/zta/kth/zta;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta$sis;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p0}, Lyou/zta/zta/zta/kth/zta;->cno(Lyou/zta/zta/zta/kth/zta;)V

    return-void
.end method
