.class Lcom/oneplus/settings/ui/OPCustomTonePreference$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_custom_tone_preview_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    sget p1, Lcom/android/settings/R$id;->preview:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/RadiusImageView;

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 165
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
