.class Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;
.super Ljava/lang/Object;
.source "CaptionAppearanceFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/CaptionAppearanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->access$000(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;->this$0:Lcom/android/settings/accessibility/CaptionAppearanceFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->access$100(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V

    return-void
.end method
