.class public final synthetic Lcom/android/settings/password/-$$Lambda$8EQMMpT3cZZbdnVNBjOcXjnOBDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$8EQMMpT3cZZbdnVNBjOcXjnOBDg;->f$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/-$$Lambda$8EQMMpT3cZZbdnVNBjOcXjnOBDg;->f$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method
