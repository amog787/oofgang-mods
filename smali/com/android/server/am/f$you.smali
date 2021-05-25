.class Lcom/android/server/am/f$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/f;


# direct methods
.method constructor <init>(Lcom/android/server/am/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {p0, p1}, Lcom/android/server/am/f;->zta(Lcom/android/server/am/f;Lorg/json/JSONArray;)V

    return-void
.end method
