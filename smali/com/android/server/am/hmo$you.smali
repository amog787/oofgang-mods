.class Lcom/android/server/am/hmo$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/hmo;


# direct methods
.method private constructor <init>(Lcom/android/server/am/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/hmo$you;->zta:Lcom/android/server/am/hmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/hmo;Lcom/android/server/am/hmo$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo$you;-><init>(Lcom/android/server/am/hmo;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo$you;->zta:Lcom/android/server/am/hmo;

    invoke-static {p0, p1}, Lcom/android/server/am/hmo;->zta(Lcom/android/server/am/hmo;Lorg/json/JSONArray;)V

    return-void
.end method
