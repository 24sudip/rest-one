<?php

/* Handle file upload */
function handleUpload($inputName, $model=null) {
    try {
        if (request()->hasFile($inputName)) {
            if ($model && \File::exists(public_path($model->{$inputName}))) {
                \File::delete(public_path($model->{$inputName}));
            }
            $file = request()->file($inputName);
            $fileName = rand().$file->getClientOriginalName();
            $file->move(public_path('/hero_uploads'), $fileName);
            $filePath = "/hero_uploads/". $fileName;
            return $filePath;
        }
    } catch (\Throwable $th) {
        throw $th;
    }
}

/* Delete file */
function deleteFileIfExist($filePath) {
    try {
        if (\File::exists(public_path($filePath))) {
            \File::delete(public_path($filePath));
        }
    } catch (\Throwable $th) {
        throw $th;
    }
}

?>
