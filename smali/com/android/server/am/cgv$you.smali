.class Lcom/android/server/am/cgv$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/cgv;


# direct methods
.method private constructor <init>(Lcom/android/server/am/cgv;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/cgv$you;->zta:Lcom/android/server/am/cgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/cgv;Lcom/android/server/am/cgv$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cgv$you;-><init>(Lcom/android/server/am/cgv;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cgv$you;->zta:Lcom/android/server/am/cgv;

    invoke-static {p0, p1}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Lorg/json/JSONArray;)V

    return-void
.end method
