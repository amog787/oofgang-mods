.class public Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;
.super Landroidx/preference/Preference;
.source "AppBubbleListPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AppBubbleListPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationPreference"
.end annotation


# instance fields
.field mOnClickBubbles:Z

.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 163
    sget p1, Lcom/android/settings/R$layout;->bubble_conversation_remove_button:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 169
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickBubbles:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bubble_app_setting_bubble_conversation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bubble_app_setting_unbubble_conversation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickBubblesConversation(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickBubbles:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
