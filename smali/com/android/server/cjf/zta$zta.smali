.class Lcom/android/server/cjf/zta$zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cjf/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/server/cjf/zta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/cjf/zta$zta;->zta()Lcom/android/server/cjf/zta;

    move-result-object p0

    return-object p0
.end method

.method protected zta()Lcom/android/server/cjf/zta;
    .locals 1

    new-instance p0, Lcom/android/server/cjf/zta;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/cjf/zta;-><init>(Lcom/android/server/cjf/zta$zta;)V

    return-object p0
.end method