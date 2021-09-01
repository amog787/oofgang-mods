.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 73
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_incoming:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    .line 74
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_messageText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    .line 75
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_timestampText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 76
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 77
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconTextColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 78
    sget p3, Lcom/android/settings/R$styleable;->ConversationMessageView_iconBackgroundColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->conversation_message_icon:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->conversation_message_content:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 268
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 272
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateTextAppearance()V
    .locals 3

    .line 254
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$color;->message_text_incoming:I

    goto :goto_0

    .line 255
    :cond_0
    sget v0, Lcom/android/settings/R$color;->message_text_outgoing:I

    .line 256
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/R$color;->timestamp_text_incoming:I

    goto :goto_1

    .line 257
    :cond_1
    sget v1, Lcom/android/settings/R$color;->timestamp_text_outgoing:I

    .line 258
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 260
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewAppearance()V
    .locals 8

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    sget v1, Lcom/android/settings/R$dimen;->message_bubble_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 195
    sget v1, Lcom/android/settings/R$dimen;->message_text_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 197
    sget v2, Lcom/android/settings/R$dimen;->message_text_top_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 199
    sget v3, Lcom/android/settings/R$dimen;->message_text_bottom_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 214
    iget-boolean v4, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v4, :cond_0

    const v4, 0x800013

    goto :goto_0

    :cond_0
    const v4, 0x800015

    .line 216
    :goto_0
    sget v5, Lcom/android/settings/R$dimen;->message_padding_default:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 218
    sget v6, Lcom/android/settings/R$dimen;->message_metadata_top_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 222
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$drawable;->message_bubble_incoming:I

    goto :goto_1

    .line 223
    :cond_1
    sget v0, Lcom/android/settings/R$drawable;->message_bubble_outgoing:I

    .line 224
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/android/settings/R$color;->message_bubble_incoming:I

    goto :goto_2

    .line 225
    :cond_2
    sget v6, Lcom/android/settings/R$color;->message_bubble_outgoing:I

    .line 226
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 229
    invoke-virtual {v7, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    invoke-virtual {v7, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 228
    invoke-static {v7, v0, v6}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    iget-object v6, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v5, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    return-void
.end method

.method private updateViewContent()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$drawable;->conversation_message_icon_incoming:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$drawable;->conversation_message_icon_outgoing:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 87
    sget v0, Lcom/android/settings/R$id;->message_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 88
    sget v0, Lcom/android/settings/R$id;->message_text_and_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    .line 89
    sget v0, Lcom/android/settings/R$id;->message_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/android/settings/R$id;->message_status:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/android/settings/R$id;->conversation_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 131
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 133
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 134
    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p5

    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 137
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 145
    iget-boolean v4, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    :goto_0
    add-int p1, p4, p3

    float-to-int v3, v3

    add-int/2addr p1, v3

    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    :goto_1
    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    sub-int p1, p4, p2

    float-to-int v3, v3

    sub-int/2addr p1, v3

    .line 163
    :goto_2
    iget-object v3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int/2addr p3, p4

    add-int/2addr p5, v0

    invoke-virtual {v3, p4, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 101
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 102
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 104
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 105
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 105
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$dimen;->message_bubble_arrow_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 116
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, p2

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr v1, p2

    const/high16 p2, -0x80000000

    .line 118
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 121
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 123
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 123
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
