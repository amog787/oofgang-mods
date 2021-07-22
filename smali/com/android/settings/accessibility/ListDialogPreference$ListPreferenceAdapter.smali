.class Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListPreferenceAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;Lcom/android/settings/accessibility/ListDialogPreference$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;-><init>(Lcom/android/settings/accessibility/ListDialogPreference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$100(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$100(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object p0

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$100(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object p0

    aget p0, p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    .line 286
    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 287
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 289
    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->access$200(Lcom/android/settings/accessibility/ListDialogPreference;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 291
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$ListPreferenceAdapter;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindListItem(Landroid/view/View;I)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
