.class Lcom/android/server/inputmethod/OpVerificationCodeController$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;->initOnlineConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/inputmethod/OpVerificationCodeController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$tsu;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    const-string p1, "OpVerificationCodeController"

    const-string v0, "On Update Config----------------"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$tsu;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$1400(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    return-void
.end method
