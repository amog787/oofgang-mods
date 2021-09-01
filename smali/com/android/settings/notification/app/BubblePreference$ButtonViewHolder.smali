.class Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;
.super Ljava/lang/Object;
.source "BubblePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/app/BubblePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonViewHolder"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/notification/app/BubblePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/BubblePreference;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->this$0:Lcom/android/settings/notification/app/BubblePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    .line 164
    iput-object p3, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 165
    iput-object p4, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method setSelected(Landroid/content/Context;Z)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->this$0:Lcom/android/settings/notification/app/BubblePreference;

    if-eqz p2, :cond_0

    invoke-static {v1}, Lcom/android/settings/notification/app/BubblePreference;->access$000(Lcom/android/settings/notification/app/BubblePreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/settings/notification/app/BubblePreference;->access$100(Lcom/android/settings/notification/app/BubblePreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_1

    .line 174
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1

    :cond_1
    const p2, 0x1010036

    .line 175
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 176
    :goto_1
    iget-object p2, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/notification/app/BubblePreference$ButtonViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
