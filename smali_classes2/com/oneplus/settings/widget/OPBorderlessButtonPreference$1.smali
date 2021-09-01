.class Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;
.super Ljava/lang/Object;
.source "OPBorderlessButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;->this$0:Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference$1;->this$0:Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    return-void
.end method
