.class public abstract Ls/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ls/a;


# instance fields
.field private final e:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls/a$a;

    invoke-direct {v0}, Ls/a$a;-><init>()V

    sput-object v0, Ls/a;->f:Ls/a;

    new-instance v0, Ls/a$b;

    invoke-direct {v0}, Ls/a$b;-><init>()V

    sput-object v0, Ls/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls/a;->e:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_c

    :cond_a
    sget-object p1, Ls/a;->f:Ls/a;

    :goto_c
    iput-object p1, p0, Ls/a;->e:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    sget-object v0, Ls/a;->f:Ls/a;

    if-eq p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-object p1, p0, Ls/a;->e:Landroid/os/Parcelable;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "superState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ls/a$a;)V
    .registers 2

    invoke-direct {p0}, Ls/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Ls/a;->e:Landroid/os/Parcelable;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Ls/a;->e:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
