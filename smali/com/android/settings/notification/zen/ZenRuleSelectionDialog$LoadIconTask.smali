.class Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;->viewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    .line 236
    aget-object p0, p1, p0

    invoke-static {}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->access$200()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 227
    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;->doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 227
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
