.class Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->access$300(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object p0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
