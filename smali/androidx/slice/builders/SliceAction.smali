.class public Landroidx/slice/builders/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mSliceAction:Landroidx/slice/core/SliceActionImpl;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-void
.end method

.method public static create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 161
    new-instance v0, Landroidx/slice/builders/SliceAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 200
    new-instance v0, Landroidx/slice/builders/SliceAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 201
    iget-object p0, v0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setActivity(Z)V

    return-object v0
.end method

.method public static createToggle(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 266
    new-instance v0, Landroidx/slice/builders/SliceAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method

.method public static createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 238
    new-instance v0, Landroidx/slice/builders/SliceAction;

    invoke-direct {v0, p0, p1, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 0

    .line 406
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 0

    .line 321
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getAction()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public getImageMode()I
    .locals 0

    .line 386
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p0

    return p0
.end method

.method public getImpl()Landroidx/slice/core/SliceActionImpl;
    .locals 0

    .line 415
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 362
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getPriority()I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 340
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isToggle()Z
    .locals 0

    .line 370
    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p0

    return p0
.end method

.method public setPrimaryAction(Landroidx/slice/Slice$Builder;)V
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 425
    invoke-virtual {v1, p1}, Landroidx/slice/core/SliceActionImpl;->buildPrimaryActionSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v1

    iget-object p0, p0, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {p1, v0, v1, p0}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method
