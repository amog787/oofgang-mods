.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;->f$2:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->lambda$onCreateDialog$1$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method
