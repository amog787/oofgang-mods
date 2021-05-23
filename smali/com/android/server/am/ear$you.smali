.class Lcom/android/server/am/ear$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/ear;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ear;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ear$you;->zta:Lcom/android/server/am/ear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ear;Lcom/android/server/am/ear$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ear$you;-><init>(Lcom/android/server/am/ear;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ear$you;->zta:Lcom/android/server/am/ear;

    invoke-static {p0, p1}, Lcom/android/server/am/ear;->zta(Lcom/android/server/am/ear;Lorg/json/JSONArray;)V

    return-void
.end method
