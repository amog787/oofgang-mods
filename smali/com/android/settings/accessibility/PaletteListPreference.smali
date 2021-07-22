.class public Lcom/android/settings/accessibility/PaletteListPreference;
.super Landroidx/preference/Preference;
.source "PaletteListPreference.java"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/PaletteListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget p1, Lcom/android/settings/R$layout;->daltonizer_preview:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/accessibility/PaletteListPreference;->initPreDrawListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/PaletteListPreference;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/PaletteListPreference;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method private initPreDrawListener()V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/settings/accessibility/PaletteListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/PaletteListPreference$1;-><init>(Lcom/android/settings/accessibility/PaletteListPreference;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 72
    sget v0, Lcom/android/settings/R$id;->palette_listView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mListView:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method
