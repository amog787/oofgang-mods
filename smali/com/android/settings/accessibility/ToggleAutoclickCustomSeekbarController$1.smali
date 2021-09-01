.class Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;
.super Ljava/lang/Object;
.source "ToggleAutoclickCustomSeekbarController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    invoke-static {p0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->access$000(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->access$100(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
