.class public Lcom/oneplus/settings/ui/OPListDialog;
.super Ljava/lang/Object;
.source "OPListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mListEntries:[Ljava/lang/String;

.field private mListEntriesValue:[Ljava/lang/String;

.field private mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

.field private mRootContainer:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/android/settings/R$layout;->op_list_dialog_item_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 95
    sget p3, Lcom/android/settings/R$id;->radioGroup:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    .line 97
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    .line 98
    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->okay:I

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$2;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$2;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    .line 101
    invoke-virtual {p3, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$1;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$1;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    .line 112
    invoke-virtual {p3, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, 0x1

    .line 123
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance p2, Lcom/oneplus/settings/ui/OPListDialog$3;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/ui/OPListDialog$3;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPListDialog;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPListDialog;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return p1
.end method


# virtual methods
.method public getRootContainer()Landroid/view/View;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-void
.end method

.method public setVibrateLevelKey(Ljava/lang/String;)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    .line 192
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    array-length p1, p1

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 194
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 195
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 196
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    .line 198
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    :goto_1
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog$5;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog$5;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
