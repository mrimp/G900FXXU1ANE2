.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final VERBOSE:Z

.field private static final sEnumValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;[I>;"
        }
    .end annotation
.end field

.field static sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CameraMetadataJV"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClassInit()V

    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraMetadataJV"

    const-string v1, "Shall register metadata marshalers"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/hardware/camera2/impl/MetadataMarshalRect;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/MetadataMarshalRect;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    new-instance v0, Landroid/hardware/camera2/impl/MetadataMarshalSize;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/MetadataMarshalSize;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    new-instance v0, Landroid/hardware/camera2/impl/MetadataMarshalString;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/MetadataMarshalString;-><init>()V

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraMetadataJV"

    const-string v1, "Registered metadata marshalers"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private close()V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-void
.end method

.method private fixFaceRectangles()[Landroid/graphics/Rect;
    .locals 9

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v3, v0

    new-array v1, v3, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getAvailableFormats()[I
    .locals 4

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    const/16 v2, 0x100

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getTag()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeType(I)I

    move-result v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private static getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    aget v6, v2, v0

    if-ne v6, p1, :cond_2

    move v1, v0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    if-ltz v1, :cond_1

    array-length v6, v3

    if-lt v1, v6, :cond_5

    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Argument \'value\' (%d) was not a valid enum value for type %s (registered? %b)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object p0, v8, v4

    const/4 v9, 0x2

    if-eqz v2, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, p1

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    aget-object v4, v3, v1

    return-object v4
.end method

.method private static getEnumValue(Ljava/lang/Enum;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;)I"
        }
    .end annotation

    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v1, :cond_0

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method private static getExpectedType(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t map to Java type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :pswitch_5
    const-class v0, Landroid/hardware/camera2/Rational;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getFaces()[Landroid/hardware/camera2/Face;
    .locals 21

    const/4 v9, 0x6

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CameraMetadata$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_2

    const-string v3, "CameraMetadataJV"

    const-string v4, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CameraMetadata$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/graphics/Rect;

    if-eqz v15, :cond_1

    if-nez v14, :cond_4

    :cond_1
    const-string v3, "CameraMetadataJV"

    const-string v4, "Expect face scores and rectangles to be non-null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-array v0, v3, [Landroid/hardware/camera2/Face;

    move-object/from16 v16, v0

    :goto_0
    return-object v16

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    new-array v0, v3, [Landroid/hardware/camera2/Face;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "CameraMetadataJV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown face detect mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-array v0, v3, [Landroid/hardware/camera2/Face;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_4
    array-length v3, v15

    array-length v4, v14

    if-eq v3, v4, :cond_5

    const-string v3, "CameraMetadataJV"

    const-string v4, "Face score size(%d) doesn match face rectangle size(%d)!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v19, 0x0

    array-length v0, v15

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x1

    array-length v0, v14

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    array-length v3, v15

    array-length v4, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v18

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CameraMetadata$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CameraMetadata$Key;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    if-eqz v11, :cond_6

    if-nez v12, :cond_9

    :cond_6
    const-string v3, "CameraMetadataJV"

    const-string v4, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_7
    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-byte v3, v15, v17

    const/16 v4, 0x64

    if-gt v3, v4, :cond_8

    aget-byte v3, v15, v17

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    new-instance v3, Landroid/hardware/camera2/Face;

    aget-object v4, v14, v17

    aget-byte v5, v15, v17

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_9
    array-length v3, v11

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    array-length v3, v12

    mul-int/lit8 v4, v18, 0x6

    if-eq v3, v4, :cond_b

    :cond_a
    const-string v3, "CameraMetadataJV"

    const-string v4, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x1

    array-length v0, v12

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    array-length v3, v11

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    array-length v3, v12

    div-int/lit8 v3, v3, 0x6

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    goto :goto_1

    :cond_c
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-byte v3, v15, v17

    const/16 v4, 0x64

    if-gt v3, v4, :cond_d

    aget-byte v3, v15, v17

    const/4 v4, 0x1

    if-lt v3, v4, :cond_d

    aget v3, v11, v17

    if-ltz v3, :cond_d

    new-instance v6, Landroid/graphics/Point;

    mul-int/lit8 v3, v17, 0x6

    aget v3, v12, v3

    mul-int/lit8 v4, v17, 0x6

    add-int/lit8 v4, v4, 0x1

    aget v4, v12, v4

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v7, Landroid/graphics/Point;

    mul-int/lit8 v3, v17, 0x6

    add-int/lit8 v3, v3, 0x2

    aget v3, v12, v3

    mul-int/lit8 v4, v17, 0x6

    add-int/lit8 v4, v4, 0x3

    aget v4, v12, v4

    invoke-direct {v7, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    mul-int/lit8 v3, v17, 0x6

    add-int/lit8 v3, v3, 0x4

    aget v3, v12, v3

    mul-int/lit8 v4, v17, 0x6

    add-int/lit8 v4, v4, 0x5

    aget v4, v12, v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/hardware/camera2/Face;

    aget-object v3, v14, v17

    aget-byte v4, v15, v17

    aget v5, v11, v17

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/hardware/camera2/Face;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private static getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass",
            "<TT;>;"
        }
    .end annotation

    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/MetadataMarshalClass;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->isNativeTypeSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to be marshalled to/from a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static getNativeType(I)I
    .locals 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(I)I

    move-result v0

    return v0
.end method

.method private getOverride(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/Face;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->fixFaceRectangles()[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getTypeSize(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t get size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeGetTypeFromTag(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeIsEmpty()Z
.end method

.method private synchronized native declared-synchronized nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeReadValues(I)[B
.end method

.method private synchronized native declared-synchronized nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeWriteValues(I[B)V
.end method

.method private static packArray(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;IZ)I"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, v1, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private static packClass(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;IZ)I"
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Key type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I

    move-result v1

    return v1
.end method

.method private static packEnum(Ljava/lang/Enum;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;IZ)I"
        }
    .end annotation

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getEnumValue(Ljava/lang/Enum;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1, v1, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method private static packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;IZ)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Landroid/hardware/camera2/Rational;

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packEnum(Ljava/lang/Enum;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packArray(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packClass(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private static packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;IZ)I"
        }
    .end annotation

    const/4 v5, 0x1

    if-nez p4, :cond_1

    if-nez p3, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v5

    :goto_0
    int-to-byte v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :cond_0
    :goto_1
    if-nez p3, :cond_5

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    :goto_2
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result v4

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v4, :cond_4

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object v4

    if-eq p2, v4, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to pack a type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but we expected the type to be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-ne p3, v5, :cond_6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    if-ne p3, v4, :cond_7

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_7
    const/4 v4, 0x3

    if-ne p3, v4, :cond_8

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_8
    const/4 v4, 0x4

    if-ne p3, v4, :cond_9

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_9
    const/4 v4, 0x5

    if-ne p3, v4, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/hardware/camera2/Rational;

    invoke-virtual {v3}, Landroid/hardware/camera2/Rational;->getNumerator()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Landroid/hardware/camera2/Rational;->getDenominator()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_2
.end method

.method public static registerEnumValues(Ljava/lang/Class;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;[I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected values array to be the same size as the enumTypes values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraMetadataJV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered enum values for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->getMarshalingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 5

    move-object v0, p1

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    array-length v3, v0

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget v3, v0, v1

    aput v3, v2, v1

    aget v3, v0, v1

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1

    const/16 v3, 0x21

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getTag()I

    move-result v3

    if-nez p2, :cond_0

    invoke-virtual {p0, v3, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeType(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p2, v7, v5, v1, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v2

    new-array v4, v2, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p2, v0, v5, v1, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    invoke-virtual {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    goto :goto_0
.end method

.method private setOverride(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;TT;)Z"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, [I

    check-cast p2, [I

    invoke-direct {p0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unpackArray(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result v7

    move/from16 v0, p2

    invoke-static {v5, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v9

    if-eqz v9, :cond_0

    move/from16 v0, p2

    invoke-interface {v9, v0}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->getNativeSize(I)I

    move-result v7

    :cond_0
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    div-int v4, v11, v7

    sget-boolean v12, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v12, :cond_1

    const-string v12, "CameraMetadataJV"

    const-string v13, "Attempting to unpack array (count = %d, element size = %d, bytes remaining = %d) for type %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v8, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result v10

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-lt v12, v10, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "CameraMetadataJV"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Trailing bytes ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") left over after unpacking "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2
.end method

.method private static unpackClass(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown class type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static unpackEnum(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method private static unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Landroid/hardware/camera2/Rational;

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackEnum(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackArray(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackClass(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    :goto_0
    if-nez p2, :cond_8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_8

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    if-ne p2, v4, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    if-ne p2, v4, :cond_6

    new-instance v3, Landroid/hardware/camera2/Rational;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/Rational;-><init>(II)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type, can\'t unpack a native type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_9

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    move v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_9
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object v4

    if-eq p1, v4, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to unpack a type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but we expected the type to be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getOverride(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryCount()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public readValues(I)[B
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setOverride(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeValues(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    return-void
.end method
