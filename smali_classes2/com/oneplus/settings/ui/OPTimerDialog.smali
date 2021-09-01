.class public Lcom/oneplus/settings/ui/OPTimerDialog;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mNegativeCount:I

.field private mPositiveCount:I

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 21
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    .line 23
    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    .line 24
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    .line 140
    new-instance v0, Lcom/oneplus/settings/ui/OPTimerDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPTimerDialog$2;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 33
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 34
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return p0
.end method

.method static synthetic access$110(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2

    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return p0
.end method

.method static synthetic access$410(Lcom/oneplus/settings/ui/OPTimerDialog;)I
    .locals 2

    .line 14
    iget v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPTimerDialog;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setStatus(Z)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mHandler:Landroid/os/Handler;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTimeText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    if-lez p2, :cond_1

    const-string p0, "("

    .line 197
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "s)"

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public isShowing()Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setButtonType(IIZ)V
    .locals 1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->p:Landroid/widget/Button;

    .line 113
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mPositiveCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->n:Landroid/widget/Button;

    .line 119
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iput p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mNegativeCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 1

    .line 71
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p3, v0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p3, Lcom/oneplus/settings/ui/OPTimerDialog$1;

    invoke-direct {p3, p0, p2}, Lcom/oneplus/settings/ui/OPTimerDialog$1;-><init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p1, p2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->status:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
