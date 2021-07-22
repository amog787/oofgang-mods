.class public Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenColorModePreference.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPScreenColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->access$100(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Lcom/google/android/material/indicator/PageIndicator;

    move-result-object p0

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicator;->setLocation(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->access$002(Lcom/oneplus/settings/ui/OPScreenColorModePreference;I)I

    return-void
.end method
