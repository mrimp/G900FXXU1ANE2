.class final Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceListAdapter"
.end annotation


# instance fields
.field private final ITEM_VIEW_TYPE_DEVICE:I

.field private final ITEM_VIEW_TYPE_EMPTY:I

.field private final ITEM_VIEW_TYPE_LOADING:I

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmpty:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mLoading:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mEmpty:Z

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->ITEM_VIEW_TYPE_LOADING:I

    iput v1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->ITEM_VIEW_TYPE_EMPTY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->ITEM_VIEW_TYPE_DEVICE:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mInitialIntents:[Landroid/content/Intent;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b5d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 13

    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    const v10, 0x1020419

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v10, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const v10, 0x1020419

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v10, 0x1020418

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v10, 0x102041a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v10}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10500e9

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    const v10, 0x10500ea

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    mul-int/lit8 v10, v3, 0x2

    mul-int/lit8 v11, v3, 0x2

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v11, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    #calls: Lcom/android/internal/app/ResolverActivity;->getDevType(I)I
    invoke-static {v10, v11}, Lcom/android/internal/app/ResolverActivity;->access$2400(Lcom/android/internal/app/ResolverActivity;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const v10, 0x1080a2c

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x1060085

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    int-to-float v10, v3

    int-to-float v11, v3

    int-to-float v12, v2

    invoke-virtual {v0, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v11, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    #calls: Lcom/android/internal/app/ResolverActivity;->getNetType(I)I
    invoke-static {v10, v11}, Lcom/android/internal/app/ResolverActivity;->access$2500(Lcom/android/internal/app/ResolverActivity;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const v10, 0x1080bc3

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v10, 0x1080bc7

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const v10, 0x1060084

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    const v10, 0x1080bc4

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private final loadingProgressView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 3

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x102041c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mEmpty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getLoadingView()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getItemViewType(I)I

    move-result v7

    if-nez v7, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x102041b

    if-eq v8, v9, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090118

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v8, 0x102041c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500e9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    invoke-direct {p0, v6, v8}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->loadingProgressView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    :goto_1
    return-object v6

    :cond_1
    move-object v6, p2

    goto :goto_0

    :cond_2
    if-ne v7, v11, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x102041d

    if-eq v8, v9, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090119

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v8, 0x102041e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x1040b5c

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    move-object v6, p2

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x1020416

    if-eq v8, v9, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090115

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    :goto_2
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v8, v8, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v8, v8, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v9, 0x1020420

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #calls: Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V
    invoke-static {v8, v5}, Lcom/android/internal/app/ResolverActivity;->access$2200(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TextView;)V

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040b5b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mLoading:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #calls: Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V
    invoke-static {v8, v5}, Lcom/android/internal/app/ResolverActivity;->access$2300(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TextView;)V

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    invoke-direct {p0, v6, v8}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    goto/16 :goto_1

    :cond_7
    move-object v6, p2

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->getCount()I

    move-result v3

    goto :goto_3
.end method

.method public setEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mEmpty:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DeviceListAdapter;->mLoading:Z

    return-void
.end method
