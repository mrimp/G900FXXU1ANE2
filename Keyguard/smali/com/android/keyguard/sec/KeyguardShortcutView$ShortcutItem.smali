.class public Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 12

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v0, 0x7f03002a

    const/4 v1, 0x1

    invoke-virtual {v9, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mItemPadding:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I
    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    move-result v0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #calls: Lcom/android/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {p1, p3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_1

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$900()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-nez v11, :cond_7

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-eqz v0, :cond_6

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {p1, v11}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/android/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_0
    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0600bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setFocusableInTouchMode(Z)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->onPressed(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "onTouch()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "faded out"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/16 v19, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static {v0, v15}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    #calls: Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    cmpg-double v19, v19, v21

    if-gez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    #calls: Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;->showShortcutHelpText(Z)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v9, v19, v21

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    div-double v13, v19, v21

    div-double v11, v7, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v15, v19

    move/from16 v0, v19

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)F

    move-result v19

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    int-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1902(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;)D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v21, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I
    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z
    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v19, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2502(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v19, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->this$0:Lcom/android/keyguard/sec/KeyguardShortcutView;

    move-object/from16 v20, v0

    #getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    invoke-static/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public refreshBadgeCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setBadgeCount(I)V

    return-void
.end method

.method public setOpacity(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIcon:Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setDistanceRatio(D)V

    return-void
.end method
