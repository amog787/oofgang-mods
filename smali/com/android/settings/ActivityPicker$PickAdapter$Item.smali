.class public Lcom/android/settings/ActivityPicker$PickAdapter$Item;
.super Ljava/lang/Object;
.source "ActivityPicker.java"

# interfaces
.implements Lcom/android/settings/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker$PickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field protected static sResizer:Lcom/android/settings/ActivityPicker$IconResizer;


# instance fields
.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;

    move-result-object p1

    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object p1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 246
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/settings/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method getIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 256
    iget-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object p0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.CREATE_SHORTCUT"

    .line 264
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object p0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    const-string p1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getResizer(Landroid/content/Context;)Lcom/android/settings/ActivityPicker$IconResizer;
    .locals 1

    .line 212
    sget-object p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    if-nez p0, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 p1, 0x1050000

    .line 214
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 215
    new-instance v0, Lcom/android/settings/ActivityPicker$IconResizer;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-direct {v0, p1, p1, p0}, Lcom/android/settings/ActivityPicker$IconResizer;-><init>(IILandroid/util/DisplayMetrics;)V

    sput-object v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    .line 217
    :cond_0
    sget-object p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings/ActivityPicker$IconResizer;

    return-object p0
.end method
