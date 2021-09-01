.class Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;
.super Ljava/lang/Object;
.source "OPFingerPrintItemPreference.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->access$002(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
