.class Lcom/android/server/inputmethod/OpVerificationCodeController$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/ear/zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;
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

    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cno()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$800(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z

    move-result p0

    return p0
.end method

.method public rtg()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$700(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sis(Lcom/android/server/ear/zta$zta;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$1102(Lcom/android/server/inputmethod/OpVerificationCodeController;Lcom/android/server/ear/zta$zta;)Lcom/android/server/ear/zta$zta;

    return-void
.end method

.method public ssp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final tsu()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$1000(Lcom/android/server/inputmethod/OpVerificationCodeController;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public you()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$900(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zta(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$you;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$1200(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
