.class Lcom/android/settings/widget/SeekBarPreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SeekBarPreference;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference$1;->this$0:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 148
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference$1;->this$0:Lcom/android/settings/widget/SeekBarPreference;

    .line 151
    invoke-static {p0}, Lcom/android/settings/widget/SeekBarPreference;->access$000(Lcom/android/settings/widget/SeekBarPreference;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v0

    .line 152
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result p1

    .line 150
    invoke-static {p0, v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method
