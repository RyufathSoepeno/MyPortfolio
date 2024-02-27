.class public final synthetic Lb0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb0/i;


# direct methods
.method public synthetic constructor <init>(Lb0/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/h;->e:Lb0/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lb0/h;->e:Lb0/i;

    invoke-static {v0}, Lb0/i;->d(Lb0/i;)V

    return-void
.end method
